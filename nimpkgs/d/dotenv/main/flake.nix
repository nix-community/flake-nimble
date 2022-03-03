{
  description = ''Loads environment variables from `.env`.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-dotenv-main.flake = false;
  inputs.src-dotenv-main.type = "github";
  inputs.src-dotenv-main.owner = "euantorano";
  inputs.src-dotenv-main.repo = "dotenv.nim";
  inputs.src-dotenv-main.ref = "refs/heads/main";
  inputs.src-dotenv-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-dotenv-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dotenv-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dotenv-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}