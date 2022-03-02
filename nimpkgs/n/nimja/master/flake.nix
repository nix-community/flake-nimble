{
  description = ''typed and compiled template engine inspired by jinja2, twig and onionhammer/nim-templates for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimja-master.flake = false;
  inputs.src-nimja-master.type = "github";
  inputs.src-nimja-master.owner = "enthus1ast";
  inputs.src-nimja-master.repo = "nimja";
  inputs.src-nimja-master.ref = "refs/heads/master";
  inputs.src-nimja-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimja-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimja-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimja-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}