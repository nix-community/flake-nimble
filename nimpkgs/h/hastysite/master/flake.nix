{
  description = ''A small but powerful static site generator powered by HastyScribe and min'';
  inputs.src-hastysite-master.flake = false;
  inputs.src-hastysite-master.type = "github";
  inputs.src-hastysite-master.owner = "h3rald";
  inputs.src-hastysite-master.repo = "hastysite";
  inputs.src-hastysite-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-hastysite-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hastysite-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hastysite-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}