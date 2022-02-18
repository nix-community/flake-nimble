{
  description = ''Drawing in terminal with Unicode Braille characters.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-drawille-master.flake = false;
  inputs.src-drawille-master.type = "github";
  inputs.src-drawille-master.owner = "PMunch";
  inputs.src-drawille-master.repo = "drawille-nim";
  inputs.src-drawille-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-drawille-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-drawille-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-drawille-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}