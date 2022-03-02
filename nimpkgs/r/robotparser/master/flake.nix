{
  description = ''Determine if a useragent can access a URL using robots.txt'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-robotparser-master.flake = false;
  inputs.src-robotparser-master.type = "github";
  inputs.src-robotparser-master.owner = "achesak";
  inputs.src-robotparser-master.repo = "nim-robotparser";
  inputs.src-robotparser-master.ref = "refs/heads/master";
  inputs.src-robotparser-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-robotparser-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-robotparser-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-robotparser-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}