{
  description = ''library for generating PDF files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimPDF-master.flake = false;
  inputs.src-nimPDF-master.type = "github";
  inputs.src-nimPDF-master.owner = "jangko";
  inputs.src-nimPDF-master.repo = "nimpdf";
  inputs.src-nimPDF-master.ref = "refs/heads/master";
  
  
  inputs."nimbmp".type = "github";
  inputs."nimbmp".owner = "riinr";
  inputs."nimbmp".repo = "flake-nimble";
  inputs."nimbmp".ref = "flake-pinning";
  inputs."nimbmp".dir = "nimpkgs/n/nimbmp";

  
  inputs."nimpng".type = "github";
  inputs."nimpng".owner = "riinr";
  inputs."nimpng".repo = "flake-nimble";
  inputs."nimpng".ref = "flake-pinning";
  inputs."nimpng".dir = "nimpkgs/n/nimpng";

  
  inputs."nimsha2".type = "github";
  inputs."nimsha2".owner = "riinr";
  inputs."nimsha2".repo = "flake-nimble";
  inputs."nimsha2".ref = "flake-pinning";
  inputs."nimsha2".dir = "nimpkgs/n/nimsha2";

  
  inputs."nimaes".type = "github";
  inputs."nimaes".owner = "riinr";
  inputs."nimaes".repo = "flake-nimble";
  inputs."nimaes".ref = "flake-pinning";
  inputs."nimaes".dir = "nimpkgs/n/nimaes";

  
  inputs."stb_image".type = "github";
  inputs."stb_image".owner = "riinr";
  inputs."stb_image".repo = "flake-nimble";
  inputs."stb_image".ref = "flake-pinning";
  inputs."stb_image".dir = "nimpkgs/s/stb_image";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimPDF-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimPDF-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimPDF-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}