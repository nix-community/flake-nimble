{
  description = ''Loads environment variables from `.env`.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-dotenv-v1_0_4.flake = false;
  inputs.src-dotenv-v1_0_4.type = "github";
  inputs.src-dotenv-v1_0_4.owner = "euantorano";
  inputs.src-dotenv-v1_0_4.repo = "dotenv.nim";
  inputs.src-dotenv-v1_0_4.ref = "refs/tags/v1.0.4";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-dotenv-v1_0_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dotenv-v1_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dotenv-v1_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}