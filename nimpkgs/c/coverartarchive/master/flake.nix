{
  description = ''Cover Art Archive API wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-coverartarchive-master.flake = false;
  inputs.src-coverartarchive-master.type = "github";
  inputs.src-coverartarchive-master.owner = "achesak";
  inputs.src-coverartarchive-master.repo = "nim-coverartarchive";
  inputs.src-coverartarchive-master.ref = "refs/heads/master";
  inputs.src-coverartarchive-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-coverartarchive-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-coverartarchive-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-coverartarchive-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}