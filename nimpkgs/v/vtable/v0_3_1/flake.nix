{
  description = ''Implement dynamic dispatch through vtable, should works for dynlib.'';
  inputs.src-vtable-v0_3_1.flake = false;
  inputs.src-vtable-v0_3_1.type = "github";
  inputs.src-vtable-v0_3_1.owner = "codehz";
  inputs.src-vtable-v0_3_1.repo = "nim-vtable";
  inputs.src-vtable-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, src-vtable-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vtable-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vtable-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}