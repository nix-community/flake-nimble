{
  description = ''SHA-1 produces a 160-bit (20-byte) hash value from arbitrary input'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-sha1-master.flake = false;
  inputs.src-sha1-master.type = "github";
  inputs.src-sha1-master.owner = "onionhammer";
  inputs.src-sha1-master.repo = "sha1";
  inputs.src-sha1-master.ref = "refs/heads/master";
  inputs.src-sha1-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sha1-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sha1-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sha1-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}