{
  description = ''ctrulib wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ctrulib-master.flake = false;
  inputs.src-ctrulib-master.type = "github";
  inputs.src-ctrulib-master.owner = "skyforce77";
  inputs.src-ctrulib-master.repo = "ctrulib-nim";
  inputs.src-ctrulib-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ctrulib-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ctrulib-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ctrulib-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}