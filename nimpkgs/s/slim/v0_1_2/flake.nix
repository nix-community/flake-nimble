{
  description = ''nim package manager'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-slim-v0_1_2.flake = false;
  inputs.src-slim-v0_1_2.type = "github";
  inputs.src-slim-v0_1_2.owner = "bung87";
  inputs.src-slim-v0_1_2.repo = "slim";
  inputs.src-slim-v0_1_2.ref = "refs/tags/v0.1.2";
  inputs.src-slim-v0_1_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."hmisc".type = "github";
  # inputs."hmisc".owner = "riinr";
  # inputs."hmisc".repo = "flake-nimble";
  # inputs."hmisc".ref = "flake-pinning";
  # inputs."hmisc".dir = "nimpkgs/h/hmisc";
  # inputs."hmisc".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."hmisc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."compiler".type = "github";
  # inputs."compiler".owner = "riinr";
  # inputs."compiler".repo = "flake-nimble";
  # inputs."compiler".ref = "flake-pinning";
  # inputs."compiler".dir = "nimpkgs/c/compiler";
  # inputs."compiler".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."compiler".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-slim-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-slim-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-slim-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}