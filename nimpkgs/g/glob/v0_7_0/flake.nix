{
  description = ''Pure library for matching file paths against Unix style glob patterns.'';
  inputs.src-glob-v0_7_0.flake = false;
  inputs.src-glob-v0_7_0.type = "github";
  inputs.src-glob-v0_7_0.owner = "haltcase";
  inputs.src-glob-v0_7_0.repo = "glob";
  inputs.src-glob-v0_7_0.ref = "refs/tags/v0.7.0";
  
  
  inputs."regex".url = "path:../../../r/regex";
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  outputs = { self, nixpkgs, src-glob-v0_7_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-glob-v0_7_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-glob-v0_7_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}