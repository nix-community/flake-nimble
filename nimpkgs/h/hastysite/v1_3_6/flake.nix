{
  description = ''A small but powerful static site generator powered by HastyScribe and min'';
  inputs.src-hastysite-v1_3_6.flake = false;
  inputs.src-hastysite-v1_3_6.type = "github";
  inputs.src-hastysite-v1_3_6.owner = "h3rald";
  inputs.src-hastysite-v1_3_6.repo = "hastysite";
  inputs.src-hastysite-v1_3_6.ref = "refs/tags/v1.3.6";
  
  outputs = { self, nixpkgs, src-hastysite-v1_3_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hastysite-v1_3_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hastysite-v1_3_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}