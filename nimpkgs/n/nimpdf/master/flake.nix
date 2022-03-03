{
  description = ''library for generating PDF files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimPDF-master.flake = false;
  inputs.src-nimPDF-master.type = "github";
  inputs.src-nimPDF-master.owner = "jangko";
  inputs.src-nimPDF-master.repo = "nimpdf";
  inputs.src-nimPDF-master.ref = "refs/heads/master";
  inputs.src-nimPDF-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimbmp".type = "github";
  # inputs."nimbmp".owner = "riinr";
  # inputs."nimbmp".repo = "flake-nimble";
  # inputs."nimbmp".ref = "flake-pinning";
  # inputs."nimbmp".dir = "nimpkgs/n/nimbmp";
  # inputs."nimbmp".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimbmp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimpng".type = "github";
  # inputs."nimpng".owner = "riinr";
  # inputs."nimpng".repo = "flake-nimble";
  # inputs."nimpng".ref = "flake-pinning";
  # inputs."nimpng".dir = "nimpkgs/n/nimpng";
  # inputs."nimpng".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimpng".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimsha2".type = "github";
  # inputs."nimsha2".owner = "riinr";
  # inputs."nimsha2".repo = "flake-nimble";
  # inputs."nimsha2".ref = "flake-pinning";
  # inputs."nimsha2".dir = "nimpkgs/n/nimsha2";
  # inputs."nimsha2".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimsha2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimaes".type = "github";
  # inputs."nimaes".owner = "riinr";
  # inputs."nimaes".repo = "flake-nimble";
  # inputs."nimaes".ref = "flake-pinning";
  # inputs."nimaes".dir = "nimpkgs/n/nimaes";
  # inputs."nimaes".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimaes".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."stb_image".type = "github";
  # inputs."stb_image".owner = "riinr";
  # inputs."stb_image".repo = "flake-nimble";
  # inputs."stb_image".ref = "flake-pinning";
  # inputs."stb_image".dir = "nimpkgs/s/stb_image";
  # inputs."stb_image".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."stb_image".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimPDF-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimPDF-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimPDF-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}