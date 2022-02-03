{
  description = ''Implement dynamic dispatch through vtable, should works for dynlib.'';
  inputs.src-vtable-v0_1_1.flake = false;
  inputs.src-vtable-v0_1_1.type = "github";
  inputs.src-vtable-v0_1_1.owner = "codehz";
  inputs.src-vtable-v0_1_1.repo = "nim-vtable";
  inputs.src-vtable-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-vtable-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vtable-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vtable-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}