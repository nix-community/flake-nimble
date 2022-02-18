{
  description = ''UTF-8 test cases and supporting code.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-utf8tests-main.flake = false;
  inputs.src-utf8tests-main.type = "github";
  inputs.src-utf8tests-main.owner = "flenniken";
  inputs.src-utf8tests-main.repo = "utf8tests";
  inputs.src-utf8tests-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-utf8tests-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-utf8tests-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-utf8tests-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}