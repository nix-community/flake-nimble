{
  description = ''Bindings to libopusenc'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-opusenc-master.flake = false;
  inputs.src-opusenc-master.type = "other";
  inputs.src-opusenc-master.owner = "~ehmry";
  inputs.src-opusenc-master.repo = "nim_opusenc";
  inputs.src-opusenc-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-opusenc-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opusenc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-opusenc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}