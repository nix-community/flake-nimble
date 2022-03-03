{
  description = ''Test asynchronous code'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-asynctest-main.flake = false;
  inputs.src-asynctest-main.type = "github";
  inputs.src-asynctest-main.owner = "markspanbroek";
  inputs.src-asynctest-main.repo = "asynctest";
  inputs.src-asynctest-main.ref = "refs/heads/main";
  inputs.src-asynctest-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-asynctest-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asynctest-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-asynctest-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}