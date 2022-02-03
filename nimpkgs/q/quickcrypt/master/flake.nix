{
  description = ''A library for quickly and easily encrypting strings & files. User-friendly and highly compatible.'';
  inputs.src-quickcrypt-master.flake = false;
  inputs.src-quickcrypt-master.type = "github";
  inputs.src-quickcrypt-master.owner = "theAkito";
  inputs.src-quickcrypt-master.repo = "nim-quickcrypt";
  inputs.src-quickcrypt-master.ref = "refs/heads/master";
  
  
  inputs."nimaes".url = "path:../../../n/nimaes";
  inputs."nimaes".type = "github";
  inputs."nimaes".owner = "riinr";
  inputs."nimaes".repo = "flake-nimble";
  inputs."nimaes".ref = "flake-pinning";
  inputs."nimaes".dir = "nimpkgs/n/nimaes";

  
  inputs."neoid".url = "path:../../../n/neoid";
  inputs."neoid".type = "github";
  inputs."neoid".owner = "riinr";
  inputs."neoid".repo = "flake-nimble";
  inputs."neoid".ref = "flake-pinning";
  inputs."neoid".dir = "nimpkgs/n/neoid";

  outputs = { self, nixpkgs, src-quickcrypt-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-quickcrypt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-quickcrypt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}