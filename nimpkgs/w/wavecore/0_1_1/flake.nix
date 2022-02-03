{
  description = ''Client and server database and networking utils'';
  inputs.src-wavecore-0_1_1.flake = false;
  inputs.src-wavecore-0_1_1.type = "github";
  inputs.src-wavecore-0_1_1.owner = "ansiwave";
  inputs.src-wavecore-0_1_1.repo = "wavecore";
  inputs.src-wavecore-0_1_1.ref = "refs/tags/0.1.1";
  
  
  inputs."urlly".url = "path:../../../u/urlly";
  inputs."urlly".type = "github";
  inputs."urlly".owner = "riinr";
  inputs."urlly".repo = "flake-nimble";
  inputs."urlly".ref = "flake-pinning";
  inputs."urlly".dir = "nimpkgs/u/urlly";

  
  inputs."puppy".url = "path:../../../p/puppy";
  inputs."puppy".type = "github";
  inputs."puppy".owner = "riinr";
  inputs."puppy".repo = "flake-nimble";
  inputs."puppy".ref = "flake-pinning";
  inputs."puppy".dir = "nimpkgs/p/puppy";

  
  inputs."flatty".url = "path:../../../f/flatty";
  inputs."flatty".type = "github";
  inputs."flatty".owner = "riinr";
  inputs."flatty".repo = "flake-nimble";
  inputs."flatty".ref = "flake-pinning";
  inputs."flatty".dir = "nimpkgs/f/flatty";

  
  inputs."zippy".url = "path:../../../z/zippy";
  inputs."zippy".type = "github";
  inputs."zippy".owner = "riinr";
  inputs."zippy".repo = "flake-nimble";
  inputs."zippy".ref = "flake-pinning";
  inputs."zippy".dir = "nimpkgs/z/zippy";

  
  inputs."paramidi".url = "path:../../../p/paramidi";
  inputs."paramidi".type = "github";
  inputs."paramidi".owner = "riinr";
  inputs."paramidi".repo = "flake-nimble";
  inputs."paramidi".ref = "flake-pinning";
  inputs."paramidi".dir = "nimpkgs/p/paramidi";

  outputs = { self, nixpkgs, src-wavecore-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wavecore-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-wavecore-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}