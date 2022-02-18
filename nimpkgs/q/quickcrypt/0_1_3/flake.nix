{
  description = ''A library for quickly and easily encrypting strings & files. User-friendly and highly compatible.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-quickcrypt-0_1_3.flake = false;
  inputs.src-quickcrypt-0_1_3.type = "github";
  inputs.src-quickcrypt-0_1_3.owner = "theAkito";
  inputs.src-quickcrypt-0_1_3.repo = "nim-quickcrypt";
  inputs.src-quickcrypt-0_1_3.ref = "refs/tags/0.1.3";
  
  
  inputs."nimaes".type = "github";
  inputs."nimaes".owner = "riinr";
  inputs."nimaes".repo = "flake-nimble";
  inputs."nimaes".ref = "flake-pinning";
  inputs."nimaes".dir = "nimpkgs/n/nimaes";

  
  inputs."neoid".type = "github";
  inputs."neoid".owner = "riinr";
  inputs."neoid".repo = "flake-nimble";
  inputs."neoid".ref = "flake-pinning";
  inputs."neoid".dir = "nimpkgs/n/neoid";

  outputs = { self, nixpkgs, flakeNimbleLib, src-quickcrypt-0_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-quickcrypt-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-quickcrypt-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}