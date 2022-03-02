{
  description = ''Bindings for picohttpparser.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-picohttpparser-master.flake = false;
  inputs.src-picohttpparser-master.type = "github";
  inputs.src-picohttpparser-master.owner = "philip-wernersbach";
  inputs.src-picohttpparser-master.repo = "nim-picohttpparser";
  inputs.src-picohttpparser-master.ref = "refs/heads/master";
  inputs.src-picohttpparser-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-picohttpparser-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-picohttpparser-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-picohttpparser-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}