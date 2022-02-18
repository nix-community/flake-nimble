{
  description = ''Library for detecting the format of an image'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-imghdr-master.flake = false;
  inputs.src-imghdr-master.type = "github";
  inputs.src-imghdr-master.owner = "achesak";
  inputs.src-imghdr-master.repo = "nim-imghdr";
  inputs.src-imghdr-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-imghdr-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-imghdr-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-imghdr-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}