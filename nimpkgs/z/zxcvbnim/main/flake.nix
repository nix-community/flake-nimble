{
  description = ''A zxcvbn clone for Nim. Written in Nim'';
  inputs.src-zxcvbnim-main.flake = false;
  inputs.src-zxcvbnim-main.type = "github";
  inputs.src-zxcvbnim-main.owner = "jiiihpeeh";
  inputs.src-zxcvbnim-main.repo = "zxcvbnim";
  inputs.src-zxcvbnim-main.ref = "refs/heads/main";
  
  
  inputs."jsony".url = "path:../../../j/jsony";
  inputs."jsony".type = "github";
  inputs."jsony".owner = "riinr";
  inputs."jsony".repo = "flake-nimble";
  inputs."jsony".ref = "flake-pinning";
  inputs."jsony".dir = "nimpkgs/j/jsony";

  
  inputs."supersnappy".url = "path:../../../s/supersnappy";
  inputs."supersnappy".type = "github";
  inputs."supersnappy".owner = "riinr";
  inputs."supersnappy".repo = "flake-nimble";
  inputs."supersnappy".ref = "flake-pinning";
  inputs."supersnappy".dir = "nimpkgs/s/supersnappy";

  outputs = { self, nixpkgs, src-zxcvbnim-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zxcvbnim-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zxcvbnim-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}