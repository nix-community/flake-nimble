{
  description = ''Connection Test for Nim Web Applications'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nettest-main.flake = false;
  inputs.src-nettest-main.type = "github";
  inputs.src-nettest-main.owner = "blmvxer";
  inputs.src-nettest-main.repo = "netTest";
  inputs.src-nettest-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nettest-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nettest-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nettest-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}