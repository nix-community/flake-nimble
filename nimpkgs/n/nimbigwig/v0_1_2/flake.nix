{
  description = ''libBigWig wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimbigwig-v0_1_2.flake = false;
  inputs.src-nimbigwig-v0_1_2.type = "github";
  inputs.src-nimbigwig-v0_1_2.owner = "genotrance";
  inputs.src-nimbigwig-v0_1_2.repo = "nimbigwig";
  inputs.src-nimbigwig-v0_1_2.ref = "refs/tags/v0.1.2";
  inputs.src-nimbigwig-v0_1_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimgen".type = "github";
  # inputs."nimgen".owner = "riinr";
  # inputs."nimgen".repo = "flake-nimble";
  # inputs."nimgen".ref = "flake-pinning";
  # inputs."nimgen".dir = "nimpkgs/n/nimgen";
  # inputs."nimgen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimbigwig-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbigwig-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimbigwig-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}