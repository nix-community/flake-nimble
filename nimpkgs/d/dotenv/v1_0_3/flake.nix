{
  description = ''Loads environment variables from `.env`.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-dotenv-v1_0_3.flake = false;
  inputs.src-dotenv-v1_0_3.type = "github";
  inputs.src-dotenv-v1_0_3.owner = "euantorano";
  inputs.src-dotenv-v1_0_3.repo = "dotenv.nim";
  inputs.src-dotenv-v1_0_3.ref = "refs/tags/v1.0.3";
  inputs.src-dotenv-v1_0_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-dotenv-v1_0_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dotenv-v1_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dotenv-v1_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}