{
  description = ''RIFF file handling for Nim '';
  inputs.src-riff-v0_2_0.flake = false;
  inputs.src-riff-v0_2_0.type = "github";
  inputs.src-riff-v0_2_0.owner = "johnnovak";
  inputs.src-riff-v0_2_0.repo = "nim-riff";
  inputs.src-riff-v0_2_0.ref = "refs/tags/v0.2.0";
  
  
  inputs."binstreams".url = "path:../../../b/binstreams";
  inputs."binstreams".type = "github";
  inputs."binstreams".owner = "riinr";
  inputs."binstreams".repo = "flake-nimble";
  inputs."binstreams".ref = "flake-pinning";
  inputs."binstreams".dir = "nimpkgs/b/binstreams";

  outputs = { self, nixpkgs, src-riff-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-riff-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-riff-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}