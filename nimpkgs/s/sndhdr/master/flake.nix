{
  description = ''Library for detecting the format of a sound file'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-sndhdr-master.flake = false;
  inputs.src-sndhdr-master.type = "github";
  inputs.src-sndhdr-master.owner = "achesak";
  inputs.src-sndhdr-master.repo = "nim-sndhdr";
  inputs.src-sndhdr-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sndhdr-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sndhdr-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sndhdr-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}