{
  description = ''typed and compiled template engine inspired by jinja2, twig and onionhammer/nim-templates for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimja-master".type = "github";
  inputs."nimja-master".owner = "riinr";
  inputs."nimja-master".repo = "flake-nimble";
  inputs."nimja-master".ref = "flake-pinning";
  inputs."nimja-master".dir = "nimpkgs/n/nimja/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}