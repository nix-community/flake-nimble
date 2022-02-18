{
  description = ''Small library for working with colors'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-prettyclr-main.flake = false;
  inputs.src-prettyclr-main.type = "github";
  inputs.src-prettyclr-main.owner = "prettybauble";
  inputs.src-prettyclr-main.repo = "prettyclr";
  inputs.src-prettyclr-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-prettyclr-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-prettyclr-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-prettyclr-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}