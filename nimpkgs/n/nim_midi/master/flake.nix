{
  description = ''Read and write midi files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nim_midi-master.flake = false;
  inputs.src-nim_midi-master.type = "github";
  inputs.src-nim_midi-master.owner = "jerous86";
  inputs.src-nim_midi-master.repo = "nim_midi";
  inputs.src-nim_midi-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nim_midi-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim_midi-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nim_midi-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}