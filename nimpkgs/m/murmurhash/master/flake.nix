{
  description = ''Pure nim implementation of MurmurHash'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-murmurhash-master.flake = false;
  inputs.src-murmurhash-master.type = "github";
  inputs.src-murmurhash-master.owner = "cwpearson";
  inputs.src-murmurhash-master.repo = "nim-murmurhash";
  inputs.src-murmurhash-master.ref = "refs/heads/master";
  inputs.src-murmurhash-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-murmurhash-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-murmurhash-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-murmurhash-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}