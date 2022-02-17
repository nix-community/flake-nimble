{
  description = ''A browser automation library written in Nim'';
  inputs.src-halonium-0_2_4.flake = false;
  inputs.src-halonium-0_2_4.type = "github";
  inputs.src-halonium-0_2_4.owner = "halonium";
  inputs.src-halonium-0_2_4.repo = "halonium";
  inputs.src-halonium-0_2_4.ref = "refs/tags/0.2.4";
  
  
  inputs."tempfile".type = "github";
  inputs."tempfile".owner = "riinr";
  inputs."tempfile".repo = "flake-nimble";
  inputs."tempfile".ref = "flake-pinning";
  inputs."tempfile".dir = "nimpkgs/t/tempfile";

  
  inputs."uuids".type = "github";
  inputs."uuids".owner = "riinr";
  inputs."uuids".repo = "flake-nimble";
  inputs."uuids".ref = "flake-pinning";
  inputs."uuids".dir = "nimpkgs/u/uuids";

  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  
  inputs."fusion".type = "github";
  inputs."fusion".owner = "riinr";
  inputs."fusion".repo = "flake-nimble";
  inputs."fusion".ref = "flake-pinning";
  inputs."fusion".dir = "nimpkgs/f/fusion";

  outputs = { self, nixpkgs, src-halonium-0_2_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-halonium-0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-halonium-0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}