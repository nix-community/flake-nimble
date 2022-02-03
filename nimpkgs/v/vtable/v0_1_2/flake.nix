{
  description = ''Implement dynamic dispatch through vtable, should works for dynlib.'';
  inputs.src-vtable-v0_1_2.flake = false;
  inputs.src-vtable-v0_1_2.type = "github";
  inputs.src-vtable-v0_1_2.owner = "codehz";
  inputs.src-vtable-v0_1_2.repo = "nim-vtable";
  inputs.src-vtable-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-vtable-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vtable-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vtable-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}