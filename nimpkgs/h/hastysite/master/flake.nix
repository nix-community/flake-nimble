{
  description = ''A small but powerful static site generator powered by HastyScribe and min'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-hastysite-master.flake = false;
  inputs.src-hastysite-master.type = "github";
  inputs.src-hastysite-master.owner = "h3rald";
  inputs.src-hastysite-master.repo = "hastysite";
  inputs.src-hastysite-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hastysite-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hastysite-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hastysite-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}