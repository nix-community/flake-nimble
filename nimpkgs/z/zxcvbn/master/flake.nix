{
  description = ''Nim bindings for the zxcvbn-c password strength estimation library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-zxcvbn-master.flake = false;
  inputs.src-zxcvbn-master.type = "github";
  inputs.src-zxcvbn-master.owner = "status-im";
  inputs.src-zxcvbn-master.repo = "nim-zxcvbn";
  inputs.src-zxcvbn-master.ref = "refs/heads/master";
  
  
  inputs."testutils".type = "github";
  inputs."testutils".owner = "riinr";
  inputs."testutils".repo = "flake-nimble";
  inputs."testutils".ref = "flake-pinning";
  inputs."testutils".dir = "nimpkgs/t/testutils";

  outputs = { self, nixpkgs, flakeNimbleLib, src-zxcvbn-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zxcvbn-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zxcvbn-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}