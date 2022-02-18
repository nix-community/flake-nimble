{
  description = ''fastText porting in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-fasttext-master.flake = false;
  inputs.src-fasttext-master.type = "github";
  inputs.src-fasttext-master.owner = "bung87";
  inputs.src-fasttext-master.repo = "fastText";
  inputs.src-fasttext-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fasttext-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fasttext-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fasttext-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}