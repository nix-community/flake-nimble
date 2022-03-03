{
  description = ''Test asynchronous code'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-asynctest-0_3_1.flake = false;
  inputs.src-asynctest-0_3_1.type = "github";
  inputs.src-asynctest-0_3_1.owner = "markspanbroek";
  inputs.src-asynctest-0_3_1.repo = "asynctest";
  inputs.src-asynctest-0_3_1.ref = "refs/tags/0.3.1";
  inputs.src-asynctest-0_3_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-asynctest-0_3_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asynctest-0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-asynctest-0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}