{
  description = ''NodeJS Standard Library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nodejs-main.flake = false;
  inputs.src-nodejs-main.type = "github";
  inputs.src-nodejs-main.owner = "juancarlospaco";
  inputs.src-nodejs-main.repo = "nodestdlib";
  inputs.src-nodejs-main.ref = "refs/heads/main";
  inputs.src-nodejs-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nodejs-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodejs-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nodejs-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}