{
  description = ''A simple task runner. Run tasks and watch file changes with custom paths.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-monit-v1_2_3.flake = false;
  inputs.src-monit-v1_2_3.type = "github";
  inputs.src-monit-v1_2_3.owner = "jiro4989";
  inputs.src-monit-v1_2_3.repo = "monit";
  inputs.src-monit-v1_2_3.ref = "refs/tags/v1.2.3";
  inputs.src-monit-v1_2_3.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."yaml".type = "github";
  # inputs."yaml".owner = "riinr";
  # inputs."yaml".repo = "flake-nimble";
  # inputs."yaml".ref = "flake-pinning";
  # inputs."yaml".dir = "nimpkgs/y/yaml";
  # inputs."yaml".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."yaml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-monit-v1_2_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-monit-v1_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-monit-v1_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}