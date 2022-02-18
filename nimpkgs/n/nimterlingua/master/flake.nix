{
  description = ''Internationalization at Compile Time for Nim. Macro to translate unmodified code from 1 INI file. NimScript compatible.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimterlingua-master.flake = false;
  inputs.src-nimterlingua-master.type = "github";
  inputs.src-nimterlingua-master.owner = "juancarlospaco";
  inputs.src-nimterlingua-master.repo = "nim-internimgua";
  inputs.src-nimterlingua-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimterlingua-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimterlingua-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimterlingua-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}