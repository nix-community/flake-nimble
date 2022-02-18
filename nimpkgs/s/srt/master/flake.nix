{
  description = ''Nim module for parsing SRT (SubRip) subtitle files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-srt-master.flake = false;
  inputs.src-srt-master.type = "github";
  inputs.src-srt-master.owner = "achesak";
  inputs.src-srt-master.repo = "nim-srt";
  inputs.src-srt-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-srt-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-srt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-srt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}