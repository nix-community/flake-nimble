{
  description = ''A library to hide data in images. Usable as library or cli tool.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimagehide-master.flake = false;
  inputs.src-nimagehide-master.type = "github";
  inputs.src-nimagehide-master.owner = "MnlPhlp";
  inputs.src-nimagehide-master.repo = "nimagehide";
  inputs.src-nimagehide-master.ref = "refs/heads/master";
  inputs.src-nimagehide-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."stb_image".type = "github";
  inputs."stb_image".owner = "riinr";
  inputs."stb_image".repo = "flake-nimble";
  inputs."stb_image".ref = "flake-pinning";
  inputs."stb_image".dir = "nimpkgs/s/stb_image";
  inputs."stb_image".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."cli_menu".type = "github";
  inputs."cli_menu".owner = "riinr";
  inputs."cli_menu".repo = "flake-nimble";
  inputs."cli_menu".ref = "flake-pinning";
  inputs."cli_menu".dir = "nimpkgs/c/cli_menu";
  inputs."cli_menu".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cli_menu".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimagehide-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimagehide-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimagehide-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}