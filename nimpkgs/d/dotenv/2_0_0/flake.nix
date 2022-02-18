{
  description = ''Loads environment variables from `.env`.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-dotenv-2_0_0.flake = false;
  inputs.src-dotenv-2_0_0.type = "github";
  inputs.src-dotenv-2_0_0.owner = "euantorano";
  inputs.src-dotenv-2_0_0.repo = "dotenv.nim";
  inputs.src-dotenv-2_0_0.ref = "refs/tags/2.0.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-dotenv-2_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dotenv-2_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dotenv-2_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}