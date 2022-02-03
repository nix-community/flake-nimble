{
  description = ''A library to hide data in images. Usable as library or cli tool.'';
  inputs.src-nimagehide-master.flake = false;
  inputs.src-nimagehide-master.type = "github";
  inputs.src-nimagehide-master.owner = "MnlPhlp";
  inputs.src-nimagehide-master.repo = "nimagehide";
  inputs.src-nimagehide-master.ref = "refs/heads/master";
  
  
  inputs."stb_image".url = "path:../../../s/stb_image";
  inputs."stb_image".type = "github";
  inputs."stb_image".owner = "riinr";
  inputs."stb_image".repo = "flake-nimble";
  inputs."stb_image".ref = "flake-pinning";
  inputs."stb_image".dir = "nimpkgs/s/stb_image";

  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."cli_menu".url = "path:../../../c/cli_menu";
  inputs."cli_menu".type = "github";
  inputs."cli_menu".owner = "riinr";
  inputs."cli_menu".repo = "flake-nimble";
  inputs."cli_menu".ref = "flake-pinning";
  inputs."cli_menu".dir = "nimpkgs/c/cli_menu";

  outputs = { self, nixpkgs, src-nimagehide-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimagehide-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimagehide-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}