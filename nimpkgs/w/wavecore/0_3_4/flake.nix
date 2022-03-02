{
  description = ''Client and server database and networking utils'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-wavecore-0_3_4.flake = false;
  inputs.src-wavecore-0_3_4.type = "github";
  inputs.src-wavecore-0_3_4.owner = "ansiwave";
  inputs.src-wavecore-0_3_4.repo = "wavecore";
  inputs.src-wavecore-0_3_4.ref = "refs/tags/0.3.4";
  inputs.src-wavecore-0_3_4.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."urlly".type = "github";
  # inputs."urlly".owner = "riinr";
  # inputs."urlly".repo = "flake-nimble";
  # inputs."urlly".ref = "flake-pinning";
  # inputs."urlly".dir = "nimpkgs/u/urlly";
  # inputs."urlly".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."urlly".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."puppy".type = "github";
  # inputs."puppy".owner = "riinr";
  # inputs."puppy".repo = "flake-nimble";
  # inputs."puppy".ref = "flake-pinning";
  # inputs."puppy".dir = "nimpkgs/p/puppy";
  # inputs."puppy".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."puppy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."flatty".type = "github";
  # inputs."flatty".owner = "riinr";
  # inputs."flatty".repo = "flake-nimble";
  # inputs."flatty".ref = "flake-pinning";
  # inputs."flatty".dir = "nimpkgs/f/flatty";
  # inputs."flatty".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."flatty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."zippy".type = "github";
  # inputs."zippy".owner = "riinr";
  # inputs."zippy".repo = "flake-nimble";
  # inputs."zippy".ref = "flake-pinning";
  # inputs."zippy".dir = "nimpkgs/z/zippy";
  # inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."paramidi".type = "github";
  # inputs."paramidi".owner = "riinr";
  # inputs."paramidi".repo = "flake-nimble";
  # inputs."paramidi".ref = "flake-pinning";
  # inputs."paramidi".dir = "nimpkgs/p/paramidi";
  # inputs."paramidi".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."paramidi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-wavecore-0_3_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wavecore-0_3_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-wavecore-0_3_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}