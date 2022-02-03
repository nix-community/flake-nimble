{
  description = ''unittest fork focused on parallel test execution'';
  inputs.src-unittest2-v0_0_2.flake = false;
  inputs.src-unittest2-v0_0_2.type = "github";
  inputs.src-unittest2-v0_0_2.owner = "status-im";
  inputs.src-unittest2-v0_0_2.repo = "nim-unittest2";
  inputs.src-unittest2-v0_0_2.ref = "refs/tags/v0.0.2";
  
  outputs = { self, nixpkgs, src-unittest2-v0_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unittest2-v0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unittest2-v0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}