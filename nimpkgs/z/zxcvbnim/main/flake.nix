{
  description = ''A zxcvbn clone for Nim. Written in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-zxcvbnim-main.flake = false;
  inputs.src-zxcvbnim-main.type = "github";
  inputs.src-zxcvbnim-main.owner = "jiiihpeeh";
  inputs.src-zxcvbnim-main.repo = "zxcvbnim";
  inputs.src-zxcvbnim-main.ref = "refs/heads/main";
  
  
  inputs."jsony".type = "github";
  inputs."jsony".owner = "riinr";
  inputs."jsony".repo = "flake-nimble";
  inputs."jsony".ref = "flake-pinning";
  inputs."jsony".dir = "nimpkgs/j/jsony";

  
  inputs."supersnappy".type = "github";
  inputs."supersnappy".owner = "riinr";
  inputs."supersnappy".repo = "flake-nimble";
  inputs."supersnappy".ref = "flake-pinning";
  inputs."supersnappy".dir = "nimpkgs/s/supersnappy";

  outputs = { self, nixpkgs, flakeNimbleLib, src-zxcvbnim-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zxcvbnim-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zxcvbnim-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}