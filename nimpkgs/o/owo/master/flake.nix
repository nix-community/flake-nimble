{
  description = ''OwO text convewtew fow Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-owo-master.flake = false;
  inputs.src-owo-master.type = "github";
  inputs.src-owo-master.owner = "lmariscal";
  inputs.src-owo-master.repo = "owo";
  inputs.src-owo-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-owo-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-owo-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-owo-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}