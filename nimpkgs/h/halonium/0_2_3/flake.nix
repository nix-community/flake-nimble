{
  description = ''A browser automation library written in Nim'';
  inputs.src-halonium-0_2_3.flake = false;
  inputs.src-halonium-0_2_3.type = "github";
  inputs.src-halonium-0_2_3.owner = "halonium";
  inputs.src-halonium-0_2_3.repo = "halonium";
  inputs.src-halonium-0_2_3.ref = "refs/tags/0.2.3";
  
  
  inputs."regex".url = "path:../../../r/regex";
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  
  inputs."tempfile".url = "path:../../../t/tempfile";
  inputs."tempfile".type = "github";
  inputs."tempfile".owner = "riinr";
  inputs."tempfile".repo = "flake-nimble";
  inputs."tempfile".ref = "flake-pinning";
  inputs."tempfile".dir = "nimpkgs/t/tempfile";

  
  inputs."uuids".url = "path:../../../u/uuids";
  inputs."uuids".type = "github";
  inputs."uuids".owner = "riinr";
  inputs."uuids".repo = "flake-nimble";
  inputs."uuids".ref = "flake-pinning";
  inputs."uuids".dir = "nimpkgs/u/uuids";

  
  inputs."zip".url = "path:../../../z/zip";
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, src-halonium-0_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-halonium-0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-halonium-0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}