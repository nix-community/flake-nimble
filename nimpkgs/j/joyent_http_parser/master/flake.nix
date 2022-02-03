{
  description = ''Wrapper for high performance HTTP parsing library.'';
  inputs.src-joyent_http_parser-master.flake = false;
  inputs.src-joyent_http_parser-master.type = "github";
  inputs.src-joyent_http_parser-master.owner = "nim-lang";
  inputs.src-joyent_http_parser-master.repo = "joyent_http_parser";
  inputs.src-joyent_http_parser-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-joyent_http_parser-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-joyent_http_parser-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-joyent_http_parser-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}