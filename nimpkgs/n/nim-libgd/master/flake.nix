{
  description = ''Nim Wrapper for LibGD 2.x'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nim-libgd-master.flake = false;
  inputs.src-nim-libgd-master.type = "github";
  inputs.src-nim-libgd-master.owner = "mrhdias";
  inputs.src-nim-libgd-master.repo = "nim-libgd";
  inputs.src-nim-libgd-master.ref = "refs/heads/master";
  inputs.src-nim-libgd-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nim-libgd-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim-libgd-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nim-libgd-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}