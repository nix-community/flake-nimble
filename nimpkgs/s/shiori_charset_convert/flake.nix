{
  description = ''The SHIORI Message charset convert utility'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."shiori_charset_convert-master".type = "github";
  inputs."shiori_charset_convert-master".owner = "riinr";
  inputs."shiori_charset_convert-master".repo = "flake-nimble";
  inputs."shiori_charset_convert-master".ref = "flake-pinning";
  inputs."shiori_charset_convert-master".dir = "nimpkgs/s/shiori_charset_convert/master";
  inputs."shiori_charset_convert-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shiori_charset_convert-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shiori_charset_convert-v1_0_0".type = "github";
  inputs."shiori_charset_convert-v1_0_0".owner = "riinr";
  inputs."shiori_charset_convert-v1_0_0".repo = "flake-nimble";
  inputs."shiori_charset_convert-v1_0_0".ref = "flake-pinning";
  inputs."shiori_charset_convert-v1_0_0".dir = "nimpkgs/s/shiori_charset_convert/v1_0_0";
  inputs."shiori_charset_convert-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shiori_charset_convert-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}