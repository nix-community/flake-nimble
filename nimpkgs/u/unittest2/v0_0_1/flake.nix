{
  description = ''unittest fork focused on parallel test execution'';
  inputs.src-unittest2-v0_0_1.flake = false;
  inputs.src-unittest2-v0_0_1.type = "github";
  inputs.src-unittest2-v0_0_1.owner = "status-im";
  inputs.src-unittest2-v0_0_1.repo = "nim-unittest2";
  inputs.src-unittest2-v0_0_1.ref = "refs/tags/v0.0.1";
  
  outputs = { self, nixpkgs, src-unittest2-v0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unittest2-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unittest2-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}