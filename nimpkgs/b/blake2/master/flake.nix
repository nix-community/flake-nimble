{
  description = ''blake2 - cryptographic hash function'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-blake2-master.flake = false;
  inputs.src-blake2-master.type = "github";
  inputs.src-blake2-master.owner = "narimiran";
  inputs.src-blake2-master.repo = "blake2";
  inputs.src-blake2-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-blake2-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-blake2-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-blake2-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}