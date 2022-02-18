{
  description = ''Flexible JSON manshal/unmarshal library for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-jdec-master.flake = false;
  inputs.src-jdec-master.type = "github";
  inputs.src-jdec-master.owner = "diegogub";
  inputs.src-jdec-master.repo = "jdec";
  inputs.src-jdec-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-jdec-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jdec-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jdec-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}