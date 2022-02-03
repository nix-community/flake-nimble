{
  description = ''A small but powerful static site generator powered by HastyScribe and min'';
  inputs.src-hastysite-v1_3_3.flake = false;
  inputs.src-hastysite-v1_3_3.type = "github";
  inputs.src-hastysite-v1_3_3.owner = "h3rald";
  inputs.src-hastysite-v1_3_3.repo = "hastysite";
  inputs.src-hastysite-v1_3_3.ref = "refs/tags/v1.3.3";
  
  outputs = { self, nixpkgs, src-hastysite-v1_3_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hastysite-v1_3_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hastysite-v1_3_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}