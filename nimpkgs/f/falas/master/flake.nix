{
  description = ''fragment-aware assembler for short reads'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-falas-master.flake = false;
  inputs.src-falas-master.type = "github";
  inputs.src-falas-master.owner = "brentp";
  inputs.src-falas-master.repo = "falas";
  inputs.src-falas-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-falas-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-falas-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-falas-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}