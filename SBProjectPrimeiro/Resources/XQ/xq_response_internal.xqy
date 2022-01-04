xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://www.middleware4you.com/pessoa";
(:: import schema at "../../Servicos/Internal/XSD/PrimeiroXSD.xsd" ::)

declare variable $nome as xs:string external;
declare variable $sobrenome as xs:string external;
declare variable $grau as xs:string external;

declare function local:func($nome as xs:string, 
                            $sobrenome as xs:string, 
                            $grau as xs:string) 
                            as element() (:: schema-element(ns1:listaPessoaResponse) ::) {
    <ns1:listaPessoaResponse>
        <ns1:pessoas>
            <ns1:nome>{fn:data($nome)}</ns1:nome>
            <ns1:sobrenome>{fn:data($sobrenome)}</ns1:sobrenome>
            <ns1:grauDeInstrucao>{fn:data($grau)}</ns1:grauDeInstrucao>
        </ns1:pessoas>
    </ns1:listaPessoaResponse>
};

local:func($nome, $sobrenome, $grau)
