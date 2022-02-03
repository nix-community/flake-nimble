{
  description = ''A library for quickly and easily encrypting strings & files. User-friendly and highly compatible.'';
  inputs.src-quickcrypt-0_1_0.flake = false;
  inputs.src-quickcrypt-0_1_0.type = "github";
  inputs.src-quickcrypt-0_1_0.owner = "theAkito";
  inputs.src-quickcrypt-0_1_0.repo = "nim-quickcrypt";
  inputs.src-quickcrypt-0_1_0.ref = "refs/tags/0.1.0";
  
  
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

  outputs = { self, nixpkgs, src-quickcrypt-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-quickcrypt-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-quickcrypt-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}